.class public Lorg/apache/http/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 0

    .line 59
    new-instance p1, Lorg/apache/http/impl/cookie/IgnoreSpec;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/IgnoreSpec;-><init>()V

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 0

    .line 54
    new-instance p1, Lorg/apache/http/impl/cookie/IgnoreSpec;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/IgnoreSpec;-><init>()V

    return-object p1
.end method
