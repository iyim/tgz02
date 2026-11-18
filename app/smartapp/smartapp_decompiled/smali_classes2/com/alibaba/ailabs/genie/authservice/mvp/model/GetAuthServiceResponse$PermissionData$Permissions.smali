.class public Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;
.super Ljava/lang/Object;
.source "GetAuthServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Permissions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Unauthorized;,
        Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;
    }
.end annotation


# instance fields
.field private authorized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;"
        }
    .end annotation
.end field

.field private unauthorized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Unauthorized;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAuthorized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->authorized:Ljava/util/List;

    return-object v0
.end method

.method public getUnauthorized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Unauthorized;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->unauthorized:Ljava/util/List;

    return-object v0
.end method

.method public setAuthorized(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->authorized:Ljava/util/List;

    return-void
.end method

.method public setUnauthorized(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Unauthorized;",
            ">;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->unauthorized:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permissions{authorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->authorized:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unauthorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->unauthorized:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
