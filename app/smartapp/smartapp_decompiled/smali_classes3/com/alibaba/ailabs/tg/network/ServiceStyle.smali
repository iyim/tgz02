.class public final enum Lcom/alibaba/ailabs/tg/network/ServiceStyle;
.super Ljava/lang/Enum;
.source "ServiceStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/tg/network/ServiceStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/tg/network/ServiceStyle;

.field public static final enum MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

.field public static final enum REST:Lcom/alibaba/ailabs/tg/network/ServiceStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    const/4 v1, 0x0

    const-string v2, "MTOP"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    new-instance v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    const/4 v2, 0x1

    const-string v3, "REST"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->REST:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    sget-object v3, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->REST:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->$VALUES:[Lcom/alibaba/ailabs/tg/network/ServiceStyle;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/tg/network/ServiceStyle;
    .locals 1

    .line 7
    const-class v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/tg/network/ServiceStyle;
    .locals 1

    .line 7
    sget-object v0, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->$VALUES:[Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/tg/network/ServiceStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    return-object v0
.end method
