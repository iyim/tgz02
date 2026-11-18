.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$2;
.super Ljava/lang/Object;
.source "BaikeBaseFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->initOnTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "BaikeBaseFragment"

    const-string v1, "onTouch mOnTouchListener "

    .line 131
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->handleOnTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
