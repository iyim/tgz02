.class Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$1;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$1;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$1;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->access$000(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
