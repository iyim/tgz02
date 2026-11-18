.class public final enum Lcom/taobao/android/ultron/common/model/LinkageType;
.super Ljava/lang/Enum;
.source "LinkageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/android/ultron/common/model/LinkageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/ultron/common/model/LinkageType;

.field public static final enum REFRESH:Lcom/taobao/android/ultron/common/model/LinkageType;

.field public static final enum REQUEST:Lcom/taobao/android/ultron/common/model/LinkageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/taobao/android/ultron/common/model/LinkageType;

    const/4 v1, 0x0

    const-string v2, "REQUEST"

    invoke-direct {v0, v2, v1}, Lcom/taobao/android/ultron/common/model/LinkageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/ultron/common/model/LinkageType;->REQUEST:Lcom/taobao/android/ultron/common/model/LinkageType;

    new-instance v0, Lcom/taobao/android/ultron/common/model/LinkageType;

    const/4 v2, 0x1

    const-string v3, "REFRESH"

    invoke-direct {v0, v3, v2}, Lcom/taobao/android/ultron/common/model/LinkageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/android/ultron/common/model/LinkageType;->REFRESH:Lcom/taobao/android/ultron/common/model/LinkageType;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lcom/taobao/android/ultron/common/model/LinkageType;

    sget-object v3, Lcom/taobao/android/ultron/common/model/LinkageType;->REQUEST:Lcom/taobao/android/ultron/common/model/LinkageType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/android/ultron/common/model/LinkageType;->REFRESH:Lcom/taobao/android/ultron/common/model/LinkageType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/android/ultron/common/model/LinkageType;->$VALUES:[Lcom/taobao/android/ultron/common/model/LinkageType;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/LinkageType;
    .locals 1

    .line 9
    const-class v0, Lcom/taobao/android/ultron/common/model/LinkageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/ultron/common/model/LinkageType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/android/ultron/common/model/LinkageType;
    .locals 1

    .line 9
    sget-object v0, Lcom/taobao/android/ultron/common/model/LinkageType;->$VALUES:[Lcom/taobao/android/ultron/common/model/LinkageType;

    invoke-virtual {v0}, [Lcom/taobao/android/ultron/common/model/LinkageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/ultron/common/model/LinkageType;

    return-object v0
.end method
