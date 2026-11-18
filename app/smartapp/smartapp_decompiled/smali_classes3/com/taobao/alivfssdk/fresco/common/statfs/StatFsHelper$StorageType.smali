.class public final enum Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;
.super Ljava/lang/Enum;
.source "StatFsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

.field public static final enum EXTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

.field public static final enum INTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    const/4 v1, 0x0

    const-string v2, "INTERNAL"

    invoke-direct {v0, v2, v1}, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    .line 42
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    const/4 v2, 0x1

    const-string v3, "EXTERNAL"

    invoke-direct {v0, v3, v2}, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    sget-object v3, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->$VALUES:[Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;
    .locals 1

    .line 40
    const-class v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;
    .locals 1

    .line 40
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->$VALUES:[Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    invoke-virtual {v0}, [Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    return-object v0
.end method
