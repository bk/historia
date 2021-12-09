<%page args="info" />
<%namespace file="/lib/data.mc" import="get_yaml" />
<%
if isinstance(info, str):
    info = get_yaml(info)
%>
<section class="gallery">
  This is a gallery with the data
  ${ info }
</section>

<% return '' %>

                        <!-- Gallery -->
                            <div class="gallery style2 medium lightbox onscroll-fade-in">
                                <article>
                                    <a href="images/gallery/fulls/01.jpg" class="image">
                                        <img src="images/gallery/thumbs/01.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Ipsum Dolor</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/02.jpg" class="image">
                                        <img src="images/gallery/thumbs/02.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Feugiat Lorem</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/03.jpg" class="image">
                                        <img src="images/gallery/thumbs/03.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Magna Amet</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/04.jpg" class="image">
                                        <img src="images/gallery/thumbs/04.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Sed Tempus</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/05.jpg" class="image">
                                        <img src="images/gallery/thumbs/05.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Ultrices Magna</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/06.jpg" class="image">
                                        <img src="images/gallery/thumbs/06.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Sed Tempus</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/07.jpg" class="image">
                                        <img src="images/gallery/thumbs/07.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Ipsum Lorem</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/08.jpg" class="image">
                                        <img src="images/gallery/thumbs/08.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Magna Risus</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/09.jpg" class="image">
                                        <img src="images/gallery/thumbs/09.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Tempus Dolor</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/10.jpg" class="image">
                                        <img src="images/gallery/thumbs/10.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Sed Etiam</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/11.jpg" class="image">
                                        <img src="images/gallery/thumbs/11.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Magna Lorem</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                                <article>
                                    <a href="images/gallery/fulls/12.jpg" class="image">
                                        <img src="images/gallery/thumbs/12.jpg" alt="" />
                                    </a>
                                    <div class="caption">
                                        <h3>Ipsum Dolor</h3>
                                        <p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
                                        <ul class="actions fixed">
                                            <li><span class="button small">Details</span></li>
                                        </ul>
                                    </div>
                                </article>
                            </div>

                    </section>
