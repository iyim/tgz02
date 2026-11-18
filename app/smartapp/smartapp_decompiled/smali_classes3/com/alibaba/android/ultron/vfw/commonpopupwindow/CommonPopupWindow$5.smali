.class Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$5;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->show(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)V
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

    .line 223
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$5;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$5;->this$0:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->dismiss(Z)V

    return-void
.end method
