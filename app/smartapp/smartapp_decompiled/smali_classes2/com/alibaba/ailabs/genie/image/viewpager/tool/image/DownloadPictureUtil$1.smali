.class final Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;
.super Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;
.source "DownloadPictureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil;->downloadPicture(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "."

    .line 46
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 47
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getFolderName()Ljava/lang/String;

    move-result-object p2

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getImageTypeWithMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createFileByDeleteOldFile(Ljava/lang/String;)Z

    .line 63
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    const-string v2, "\u6210\u529f\u4fdd\u5b58\u5230 "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;)V

    invoke-direct {p1, v1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
