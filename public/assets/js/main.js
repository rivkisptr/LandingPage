/**
 * Template Name: Plato
 * Template URL: https://bootstrapmade.com/plato-responsive-bootstrap-website-template/
 * Updated: Aug 07 2024 with Bootstrap v5.3.3
 * Author: BootstrapMade.com
 * License: https://bootstrapmade.com/license/
 */

(function () {
  "use strict";

  /**
   * Apply .scrolled class to the body as the page is scrolled down
   */
  function toggleScrolled() {
    const selectBody = document.querySelector("body");
    const selectHeader = document.querySelector("#header");
    if (
      !selectHeader.classList.contains("scroll-up-sticky") &&
      !selectHeader.classList.contains("sticky-top") &&
      !selectHeader.classList.contains("fixed-top")
    )
      return;
    window.scrollY > 100
      ? selectBody.classList.add("scrolled")
      : selectBody.classList.remove("scrolled");
  }

  document.addEventListener("scroll", toggleScrolled);
  window.addEventListener("load", toggleScrolled);

  /**
   * Scroll top button
   */
  let scrollTop = document.querySelector(".scroll-top");

  function toggleScrollTop() {
    if (scrollTop) {
      window.scrollY > 100
        ? scrollTop.classList.add("active")
        : scrollTop.classList.remove("active");
    }
  }
  scrollTop.addEventListener("click", (e) => {
    e.preventDefault();
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  });

  window.addEventListener("load", toggleScrollTop);
  document.addEventListener("scroll", toggleScrollTop);

  /**
   * Animation on scroll function and init
   */
  function aosInit() {
    AOS.init({
      duration: 600,
      easing: "ease-in-out",
      once: true,
      mirror: false,
    });
  }
  window.addEventListener("load", aosInit);

  /**
   * Initiate glightbox
   */
  const glightbox = GLightbox({
    selector: ".glightbox",
  });

  /**
   * Init swiper sliders
   */
  function initSwiper() {
    document.querySelectorAll(".init-swiper").forEach(function (swiperElement) {
      let config = JSON.parse(
        swiperElement.querySelector(".swiper-config").innerHTML.trim()
      );

      if (swiperElement.classList.contains("swiper-tab")) {
        initSwiperWithCustomPagination(swiperElement, config);
      } else {
        new Swiper(swiperElement, config);
      }
    });
  }

  window.addEventListener("load", initSwiper);

  /**
   * Init isotope layout and filters
   */
  document.querySelectorAll(".isotope-layout").forEach(function (isotopeItem) {
    let layout = isotopeItem.getAttribute("data-layout") ?? "masonry";
    let filter = isotopeItem.getAttribute("data-default-filter") ?? "*";
    let sort = isotopeItem.getAttribute("data-sort") ?? "original-order";

    let initIsotope;
    imagesLoaded(isotopeItem.querySelector(".isotope-container"), function () {
      initIsotope = new Isotope(
        isotopeItem.querySelector(".isotope-container"),
        {
          itemSelector: ".isotope-item",
          layoutMode: layout,
          filter: filter,
          sortBy: sort,
        }
      );
    });

    isotopeItem
      .querySelectorAll(".isotope-filters li")
      .forEach(function (filters) {
        filters.addEventListener(
          "click",
          function () {
            isotopeItem
              .querySelector(".isotope-filters .filter-active")
              .classList.remove("filter-active");
            this.classList.add("filter-active");
            initIsotope.arrange({
              filter: this.getAttribute("data-filter"),
            });
            if (typeof aosInit === "function") {
              aosInit();
            }
          },
          false
        );
      });
  });

  /**
   * Frequently Asked Questions Toggle
   */
  document
    .querySelectorAll(".faq-item h3, .faq-item .faq-toggle")
    .forEach((faqItem) => {
      faqItem.addEventListener("click", () => {
        faqItem.parentNode.classList.toggle("faq-active");
      });
    });

  /**
   * Correct scrolling position upon page load for URLs containing hash links.
   */
  window.addEventListener("load", function (e) {
    if (window.location.hash) {
      if (document.querySelector(window.location.hash)) {
        setTimeout(() => {
          let section = document.querySelector(window.location.hash);
          let scrollMarginTop = getComputedStyle(section).scrollMarginTop;
          window.scrollTo({
            top: section.offsetTop - parseInt(scrollMarginTop),
            behavior: "smooth",
          });
        }, 100);
      }
    }
  });

  /**
   * Navmenu Scrollspy
   */
  let navmenulinks = document.querySelectorAll(".navmenu a");

  function navmenuScrollspy() {
    navmenulinks.forEach((navmenulink) => {
      if (!navmenulink.hash) return;
      let section = document.querySelector(navmenulink.hash);
      if (!section) return;
      let position = window.scrollY + 200;
      if (
        position >= section.offsetTop &&
        position <= section.offsetTop + section.offsetHeight
      ) {
        document
          .querySelectorAll(".navmenu a.active")
          .forEach((link) => link.classList.remove("active"));
        navmenulink.classList.add("active");
      } else {
        navmenulink.classList.remove("active");
      }
    });
  }
  window.addEventListener("load", navmenuScrollspy);
  document.addEventListener("scroll", navmenuScrollspy);
})();

// Modal Handler //
// Modal Handler //
document.addEventListener("DOMContentLoaded", function () {
  const firstModal = document.getElementById("KelurahanBackdrop");
  const secondModal = document.getElementById("SecondKelurahanBackdrop");
  let isBackButton = false;

  // Fungsi untuk membuat backdrop manual
  function createBackdrop() {
    if (!document.querySelector(".modal-backdrop-permanent")) {
      const backdrop = document.createElement("div");
      backdrop.className = "modal-backdrop fade show modal-backdrop-permanent";
      document.body.appendChild(backdrop);
      document.body.classList.add("modal-open");
    }
  }

  // Fungsi untuk membersihkan modal
  function cleanupModals() {
    const backdrops = document.getElementsByClassName("modal-backdrop");
    Array.from(backdrops).forEach((backdrop) => {
      if (!backdrop.classList.contains("modal-backdrop-permanent")) {
        backdrop.parentNode.removeChild(backdrop);
      }
    });
  }

  // Fungsi untuk reinisialisasi modal pertama
  function reinitializeFirstModal() {
    const modalElement = document.getElementById("KelurahanBackdrop");
    modalElement.classList.remove("show");
    modalElement.style.display = "none";
    modalElement.setAttribute("aria-hidden", "true");
    modalElement.removeAttribute("aria-modal");
  }

  // Fungsi untuk menghapus backdrop permanent
  function removeBackdrop() {
    const permanentBackdrop = document.querySelector(".modal-backdrop-permanent");
    if (permanentBackdrop) {
      permanentBackdrop.parentNode.removeChild(permanentBackdrop);
    }
    document.body.classList.remove("modal-open");
    document.body.style.removeProperty("padding-right");
    document.body.style.removeProperty("overflow");
  }

  // Event listener untuk Kelurahan saja
  const kelurahanItem = document.querySelector('[data-bs-target="#KelurahanBackdrop"]');
  if (kelurahanItem) {
    kelurahanItem.addEventListener("click", function() {
      cleanupModals();
      reinitializeFirstModal();
      createBackdrop();

      const firstModalInstance = new bootstrap.Modal(firstModal);
      firstModalInstance.show();
    });
  }

  // Handler untuk tombol Kembali
  document.getElementById("backToFirst").addEventListener("click", function () {
    isBackButton = true;
    cleanupModals();

    // Tutup modal kedua
    const secondModalInstance = bootstrap.Modal.getInstance(secondModal);
    if (secondModalInstance) {
      secondModalInstance.hide();
    }

    // Buka modal pertama
    const firstModalInstance = new bootstrap.Modal(firstModal);
    setTimeout(() => {
      firstModalInstance.show();
    }, 100);

    isBackButton = false;
  });

  // Handler untuk tombol close/tutup di modal kedua
  const closeButtons = secondModal.querySelectorAll(
    '[data-bs-dismiss="modal"], .btn-close, .btn-secondary'
  );
  closeButtons.forEach((button) => {
    button.addEventListener("click", function () {
      cleanupModals();
      reinitializeFirstModal();
      removeBackdrop();
    });
  });

  // Handler untuk tombol close di modal pertama
  const firstModalCloseButtons = firstModal.querySelectorAll(
    '[data-bs-dismiss="modal"], .btn-close, .btn-secondary'
  );
  firstModalCloseButtons.forEach((button) => {
    button.addEventListener("click", function () {
      cleanupModals();
      reinitializeFirstModal();
      removeBackdrop();
    });
  });

  // Handler ketika modal kedua selesai ditutup
  secondModal.addEventListener("hidden.bs.modal", function () {
    if (!isBackButton) {
      cleanupModals();
      reinitializeFirstModal();
      removeBackdrop();
    }
   });
});
