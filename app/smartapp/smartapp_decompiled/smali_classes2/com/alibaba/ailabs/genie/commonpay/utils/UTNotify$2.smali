.class final Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;
.super Ljava/lang/Object;
.source "UTNotify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;->val$eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;->val$pageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;->val$eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;->val$pageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify$2;->val$properties:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
