.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$2;
.super Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->loadOriginImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$2;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
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

    .line 457
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    .line 454
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$2;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
