.class public Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;
.super Ljava/lang/Object;
.source "UTNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$Value;,
        Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$Key;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onExposureEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onPageHitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
