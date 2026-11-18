.class public Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressLibraryGlideModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "ProgressLibraryGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/LibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 23
    const-class p1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>(Lokhttp3/Call$Factory;)V

    .line 23
    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
