.class public Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil;
.super Ljava/lang/Object;
.source "DownloadPictureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static downloadPicture(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
