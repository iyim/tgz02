.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$1;
.super Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;
.source "ImagePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$1;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 331
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
