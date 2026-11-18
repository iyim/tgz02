.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$3;
.super Ljava/lang/Object;
.source "ImageTextScaleSubFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->access$600(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
