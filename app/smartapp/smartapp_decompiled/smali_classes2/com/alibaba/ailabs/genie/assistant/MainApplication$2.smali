.class Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/MainApplication;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$eventPage:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/MainApplication;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->val$eventPage:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->val$eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->val$eventPage:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$2;->val$properties:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
