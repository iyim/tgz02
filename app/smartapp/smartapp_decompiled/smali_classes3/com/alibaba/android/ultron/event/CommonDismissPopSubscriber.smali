.class public Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "CommonDismissPopSubscriber.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonDismissPopSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 2

    const/4 v0, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getExtraMap()Ljava/util/Map;

    move-result-object p1

    const-string v1, "CommonPopupWindow"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;

    .line 18
    new-instance v1, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber$1;-><init>(Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->setOnCancelListener(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;)V

    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->dismiss(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "CommonDismissPopSubscriber"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
