.class public Lcom/taobao/android/nav/NavUri;
.super Ljava/lang/Object;
.source "NavUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/nav/NavUri$Schemed;
    }
.end annotation


# instance fields
.field protected mBuilder:Landroid/net/Uri$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    return-void
.end method

.method public static host(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;
    .locals 3

    .line 26
    new-instance v0, Lcom/taobao/android/nav/NavUri;

    invoke-direct {v0}, Lcom/taobao/android/nav/NavUri;-><init>()V

    .line 27
    iget-object v1, v0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object v0
.end method

.method public static scheme(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri$Schemed;
    .locals 2

    .line 14
    new-instance v0, Lcom/taobao/android/nav/NavUri;

    invoke-direct {v0}, Lcom/taobao/android/nav/NavUri;-><init>()V

    .line 15
    iget-object v1, v0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    new-instance p0, Lcom/taobao/android/nav/NavUri$1;

    invoke-direct {p0, v0}, Lcom/taobao/android/nav/NavUri$1;-><init>(Lcom/taobao/android/nav/NavUri;)V

    return-object p0
.end method


# virtual methods
.method build()Landroid/net/Uri;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public param(Ljava/lang/String;I)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public param(Ljava/lang/String;J)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public segment(I)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public segment(J)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public segment(Ljava/lang/String;)Lcom/taobao/android/nav/NavUri;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/android/nav/NavUri;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method
