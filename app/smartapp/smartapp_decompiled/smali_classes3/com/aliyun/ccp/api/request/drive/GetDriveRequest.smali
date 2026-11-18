.class public Lcom/aliyun/ccp/api/request/drive/GetDriveRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "GetDriveRequest.java"


# instance fields
.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drive_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/drive/GetDriveRequest;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/drive/GetDriveRequest;->driveId:Ljava/lang/String;

    return-void
.end method
