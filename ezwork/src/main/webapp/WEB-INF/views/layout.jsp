
<!--begin::Main-->

		<jsp:include page="partials/_header-mobile.jsp"/>
		<div class="d-flex flex-column flex-root">

			<!--begin::Page-->
			<div class="d-flex flex-row flex-column-fluid page">

				<jsp:include page="partials/_aside.jsp"/>

				<!--begin::Wrapper-->
				<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">

					<jsp:include page="partials/_header.jsp"/>

					<!--begin::Content-->
					<div class="content d-flex flex-column flex-column-fluid" id="kt_content">

						<jsp:include page="partials/_content.jsp"/>
					</div>

					<!--end::Content-->
				</div>

				<!--end::Wrapper-->
			</div>

			<!--end::Page-->
		</div>

		<!--end::Main-->