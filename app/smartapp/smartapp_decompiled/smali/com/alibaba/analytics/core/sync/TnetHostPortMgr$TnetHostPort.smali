.class public Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;
.super Ljava/lang/Object;
.source "TnetHostPortMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TnetHostPort"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adashx.m.taobao.com"

    .line 86
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->host:Ljava/lang/String;

    const/16 v0, 0x1bb

    .line 87
    iput v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->port:I

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->port:I

    return v0
.end method
