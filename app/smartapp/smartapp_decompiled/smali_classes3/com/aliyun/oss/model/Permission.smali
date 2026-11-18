.class public final enum Lcom/aliyun/oss/model/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/model/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/model/Permission;

.field public static final enum FullControl:Lcom/aliyun/oss/model/Permission;

.field public static final enum Read:Lcom/aliyun/oss/model/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/aliyun/oss/model/Permission;

    const/4 v1, 0x0

    const-string v2, "FullControl"

    invoke-direct {v0, v2, v1}, Lcom/aliyun/oss/model/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/model/Permission;->FullControl:Lcom/aliyun/oss/model/Permission;

    .line 35
    new-instance v0, Lcom/aliyun/oss/model/Permission;

    const/4 v2, 0x1

    const-string v3, "Read"

    invoke-direct {v0, v3, v2}, Lcom/aliyun/oss/model/Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/oss/model/Permission;->Read:Lcom/aliyun/oss/model/Permission;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Lcom/aliyun/oss/model/Permission;

    sget-object v3, Lcom/aliyun/oss/model/Permission;->FullControl:Lcom/aliyun/oss/model/Permission;

    aput-object v3, v0, v1

    sget-object v1, Lcom/aliyun/oss/model/Permission;->Read:Lcom/aliyun/oss/model/Permission;

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/oss/model/Permission;->$VALUES:[Lcom/aliyun/oss/model/Permission;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/Permission;
    .locals 1

    .line 25
    const-class v0, Lcom/aliyun/oss/model/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/model/Permission;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/model/Permission;
    .locals 1

    .line 25
    sget-object v0, Lcom/aliyun/oss/model/Permission;->$VALUES:[Lcom/aliyun/oss/model/Permission;

    invoke-virtual {v0}, [Lcom/aliyun/oss/model/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/model/Permission;

    return-object v0
.end method
