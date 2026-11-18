.class public Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;
.super Ljava/lang/Object;
.source "PublicSuffixDomainFilter.java"

# interfaces
.implements Lorg/apache/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixList;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cookie handler"

    .line 64
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Public suffix list"

    .line 65
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    .line 67
    new-instance p1, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-virtual {p2}, Lorg/apache/http/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/http/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cookie handler"

    .line 58
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    const-string p1, "Public suffix matcher"

    .line 59
    invoke-static {p2, p1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public static decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;
    .locals 1

    const-string v0, "Cookie attribute handler"

    .line 100
    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;-><init>(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 2

    .line 75
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localhost"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    return-void
.end method
