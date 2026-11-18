.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$6;
.super Ljava/lang/Object;
.source "EntertainmentPersonFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;->onUserInterruptPage()Z

    const/4 p1, 0x0

    return p1
.end method
