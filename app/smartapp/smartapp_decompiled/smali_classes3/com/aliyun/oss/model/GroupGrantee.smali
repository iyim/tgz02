.class public final enum Lcom/aliyun/oss/model/GroupGrantee;
.super Ljava/lang/Enum;
.source "GroupGrantee.java"

# interfaces
.implements Lcom/aliyun/oss/model/Grantee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/model/GroupGrantee;",
        ">;",
        "Lcom/aliyun/oss/model/Grantee;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/model/GroupGrantee;

.field public static final enum AllUsers:Lcom/aliyun/oss/model/GroupGrantee;


# instance fields
.field private groupUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/aliyun/oss/model/GroupGrantee;

    const/4 v1, 0x0

    const-string v2, "AllUsers"

    const-string v3, "http://oss.service.aliyun.com/acl/group/ALL_USERS"

    invoke-direct {v0, v2, v1, v3}, Lcom/aliyun/oss/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/model/GroupGrantee;->AllUsers:Lcom/aliyun/oss/model/GroupGrantee;

    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [Lcom/aliyun/oss/model/GroupGrantee;

    sget-object v2, Lcom/aliyun/oss/model/GroupGrantee;->AllUsers:Lcom/aliyun/oss/model/GroupGrantee;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aliyun/oss/model/GroupGrantee;->$VALUES:[Lcom/aliyun/oss/model/GroupGrantee;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/aliyun/oss/model/GroupGrantee;->groupUri:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/GroupGrantee;
    .locals 1

    .line 27
    const-class v0, Lcom/aliyun/oss/model/GroupGrantee;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/model/GroupGrantee;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/model/GroupGrantee;
    .locals 1

    .line 27
    sget-object v0, Lcom/aliyun/oss/model/GroupGrantee;->$VALUES:[Lcom/aliyun/oss/model/GroupGrantee;

    invoke-virtual {v0}, [Lcom/aliyun/oss/model/GroupGrantee;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/model/GroupGrantee;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/oss/model/GroupGrantee;->groupUri:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "GroupGranteeNotSupportId"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
