.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$6;
.super Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;
.source "ImagePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

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

    .line 361
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/FileTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
