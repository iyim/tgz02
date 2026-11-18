.class public Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;
.super Ljava/lang/Object;
.source "GetAuthServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Authorized"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->code:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->desc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authorized{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
