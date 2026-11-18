.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$8;
.super Ljava/lang/Object;
.source "BaikeUniversalFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->initOnTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$800(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
