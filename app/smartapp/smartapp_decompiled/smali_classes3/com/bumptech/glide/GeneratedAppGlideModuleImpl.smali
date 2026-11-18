.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field private final appGlideModule:Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;

    const-string v0, "Glide"

    const/4 v1, 0x3

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Discovered AppGlideModule from annotation: com.alibaba.ailabs.genie.smartapp.glide.CustomGlideModule"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Discovered LibraryGlideModule from annotation: com.alibaba.ailabs.genie.image.viewpager.glide.progress.ProgressLibraryGlideModule"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/GlideBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    return-void
.end method

.method public getExcludedModuleClasses()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    new-instance v0, Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/GeneratedRequestManagerFactory;-><init>()V

    return-object v0
.end method

.method bridge synthetic getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;->isManifestParsingEnabled()Z

    move-result v0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1
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

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressLibraryGlideModule;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressLibraryGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressLibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 37
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/smartapp/glide/CustomGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
