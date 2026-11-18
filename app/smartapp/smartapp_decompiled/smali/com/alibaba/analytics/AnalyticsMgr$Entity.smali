.class public Lcom/alibaba/analytics/AnalyticsMgr$Entity;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/AnalyticsMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field public dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field public isCommitDetail:Z

.field public measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field public module:Ljava/lang/String;

.field public monitorPoint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
