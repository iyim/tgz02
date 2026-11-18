.class public Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SystemStatusData;
.super Ljava/lang/Object;
.source "StatusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/status/StatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemStatusData"
.end annotation


# instance fields
.field cfgVersion:Ljava/lang/String;

.field sn:Ljava/lang/String;

.field status:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
