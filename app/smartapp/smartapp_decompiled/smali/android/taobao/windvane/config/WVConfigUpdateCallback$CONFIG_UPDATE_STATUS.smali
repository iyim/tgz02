.class public final enum Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
.super Ljava/lang/Enum;
.source "WVConfigUpdateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/WVConfigUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONFIG_UPDATE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NETWORK_NOT_SUPPORT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NOT_AVAIABLE:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UPDATE_CANCELED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UPDATE_COUNT_LIMIT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

.field public static final enum UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 6
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x1

    const-string v3, "UPDATE_DISABLED"

    invoke-direct {v0, v3, v2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 7
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v3, 0x2

    const-string v4, "UPDATE_CANCELED"

    invoke-direct {v0, v4, v3}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_CANCELED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 8
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v4, 0x3

    const-string v5, "NULL_DATA"

    invoke-direct {v0, v5, v4}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 9
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v5, 0x4

    const-string v6, "ENCODING_ERROR"

    invoke-direct {v0, v6, v5}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 10
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v6, 0x5

    const-string v7, "NOT_AVAIABLE"

    invoke-direct {v0, v7, v6}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NOT_AVAIABLE:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 11
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v7, 0x6

    const-string v8, "NO_VERSION"

    invoke-direct {v0, v8, v7}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 12
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN_ERROR"

    invoke-direct {v0, v9, v8}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 13
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/16 v9, 0x8

    const-string v10, "UPDATE_COUNT_LIMIT"

    invoke-direct {v0, v10, v9}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_COUNT_LIMIT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    .line 14
    new-instance v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/16 v10, 0x9

    const-string v11, "NETWORK_NOT_SUPPORT"

    invoke-direct {v0, v11, v10}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NETWORK_NOT_SUPPORT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/16 v0, 0xa

    .line 4
    new-array v0, v0, [Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    sget-object v11, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v11, v0, v1

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_DISABLED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_CANCELED:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NOT_AVAIABLE:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v7

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v8

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UPDATE_COUNT_LIMIT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v9

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NETWORK_NOT_SUPPORT:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    aput-object v1, v0, v10

    sput-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->$VALUES:[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
    .locals 1

    .line 4
    const-class v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
    .locals 1

    .line 4
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->$VALUES:[Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v0}, [Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    return-object v0
.end method
