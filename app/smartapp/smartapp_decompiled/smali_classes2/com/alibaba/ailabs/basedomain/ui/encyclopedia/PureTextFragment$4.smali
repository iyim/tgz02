.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$4;
.super Ljava/lang/Object;
.source "PureTextFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "PureTextFragment"

    const-string v0, "onTouch mOnTouchListener "

    .line 146
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text_click"

    const-string v1, "a1z3lt.12041697"

    const/4 v2, 0x0

    .line 147
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->onUserInterruptPage()Z

    const/4 p1, 0x0

    return p1
.end method
