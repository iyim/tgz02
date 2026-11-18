.class Lcom/alibaba/genie/market/task/MarketIpcClientMgr$1;
.super Ljava/lang/Object;
.source "MarketIpcClientMgr.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/CallBackInClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getData(Lcom/alibaba/genie/market/task/MarketApplistDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

.field final synthetic val$applistDataListener:Lcom/alibaba/genie/market/task/MarketApplistDataListener;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketApplistDataListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$1;->this$0:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    iput-object p2, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$1;->val$applistDataListener:Lcom/alibaba/genie/market/task/MarketApplistDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$1;->val$applistDataListener:Lcom/alibaba/genie/market/task/MarketApplistDataListener;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/market/task/MarketApplistDataListener;->onDataLoaded(Ljava/lang/String;)V

    return-void
.end method
