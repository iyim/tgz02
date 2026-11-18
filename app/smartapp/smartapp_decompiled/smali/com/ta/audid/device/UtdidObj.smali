.class public Lcom/ta/audid/device/UtdidObj;
.super Ljava/lang/Object;
.source "UtdidObj.java"


# instance fields
.field private isValid:Z

.field private timestamp:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/ta/audid/device/UtdidObj;->isValid:Z

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/ta/audid/device/UtdidObj;->timestamp:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/ta/audid/device/UtdidObj;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/ta/audid/device/UtdidObj;->isValid:Z

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/ta/audid/device/UtdidObj;->timestamp:J

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/ta/audid/device/UtdidObj;->isValid:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/ta/audid/device/UtdidObj;->version:I

    return-void
.end method
