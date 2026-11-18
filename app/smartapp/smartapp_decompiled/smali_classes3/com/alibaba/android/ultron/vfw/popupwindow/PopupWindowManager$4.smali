.class Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$4;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->show(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)V
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

    .line 192
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$4;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$4;->this$0:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->dismiss(Z)V

    return-void
.end method
