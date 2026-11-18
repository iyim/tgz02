.class public Lcom/taobao/phenix/chain/PhenixProduceListener$MonitorNode;
.super Ljava/lang/Object;
.source "PhenixProduceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/chain/PhenixProduceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorNode"
.end annotation


# instance fields
.field public from:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/taobao/phenix/chain/PhenixProduceListener$MonitorNode;->key:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/taobao/phenix/chain/PhenixProduceListener$MonitorNode;->from:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-void
.end method
