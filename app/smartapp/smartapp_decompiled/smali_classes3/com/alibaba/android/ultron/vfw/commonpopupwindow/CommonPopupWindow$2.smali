.class Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$2;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$2;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$2;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->access$100(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/widget/PopupWindow;

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
