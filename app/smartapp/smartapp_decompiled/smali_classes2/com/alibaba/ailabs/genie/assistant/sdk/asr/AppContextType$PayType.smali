.class public final enum Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;
.super Ljava/lang/Enum;
.source "AppContextType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum BUY_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum BUY_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum BUY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum BUY_VIP_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum BUY_VIP_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum WATCH_BY_FREE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

.field public static final enum WATCH_BY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;


# instance fields
.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v1, 0x0

    const-string v2, "WATCH_BY_FREE"

    const-string v3, "watch_by_free"

    invoke-direct {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_FREE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v2, 0x1

    const-string v3, "WATCH_BY_VIP"

    const-string v4, "watch_by_vip"

    invoke-direct {v0, v3, v2, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 62
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v3, 0x2

    const-string v4, "BUY_VIP"

    const-string v5, "buy_vip"

    invoke-direct {v0, v4, v3, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v4, 0x3

    const-string v5, "BUY_SINGLE"

    const-string v6, "buy_single"

    invoke-direct {v0, v5, v4, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 64
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v5, 0x4

    const-string v6, "BUY_VIP_SINGLE"

    const-string v7, "buy_vip_single"

    invoke-direct {v0, v6, v5, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 65
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v6, 0x5

    const-string v7, "BUY_TICKET_SINGLE"

    const-string v8, "buy_ticket_single"

    invoke-direct {v0, v7, v6, v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v7, 0x6

    const-string v8, "BUY_VIP_TICKET_SINGLE"

    const-string v9, "buy_vip_ticket_single"

    invoke-direct {v0, v8, v7, v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    const/4 v0, 0x7

    .line 59
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    sget-object v8, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_FREE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;
    .locals 1

    .line 59
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    return-object p0
.end method

.method public static valueOfPayType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;
    .locals 2

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_FREE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "watch_by_free"

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_FREE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    goto :goto_0

    :cond_1
    const-string v1, "watch_by_vip"

    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->WATCH_BY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    goto :goto_0

    :cond_2
    const-string v1, "buy_vip"

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    goto :goto_0

    :cond_3
    const-string v1, "buy_single"

    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    goto :goto_0

    :cond_4
    const-string v1, "buy_vip_single"

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    goto :goto_0

    :cond_5
    const-string v1, "buy_ticket_single"

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    goto :goto_0

    :cond_6
    const-string v1, "buy_vip_ticket_single"

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 93
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->BUY_VIP_TICKET_SINGLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;
    .locals 1

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PayType;

    return-object v0
.end method
