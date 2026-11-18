.class public Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;
.super Ljava/lang/Object;
.source "StatusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/status/StatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothStatusData"
.end annotation


# instance fields
.field macAddress:Ljava/lang/String;

.field name:Ljava/lang/String;

.field pairName:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
