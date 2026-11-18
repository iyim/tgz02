.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$5;
.super Ljava/lang/Object;
.source "PureTextFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "PureTextFragment"

    const-string v0, "onTouch mOnTouchListener "

    .line 136
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text_click"

    const-string v1, "a1z3lt.12041697"

    const/4 v2, 0x0

    .line 137
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)Z

    const/4 p1, 0x0

    return p1
.end method
