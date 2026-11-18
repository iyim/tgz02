.class public final enum Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;
.super Ljava/lang/Enum;
.source "AppContextType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

.field public static final enum ENTER_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

.field public static final enum EXIT_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

.field public static final enum POPUP_BUY_DIALOG_PAUSE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

.field public static final enum POPUP_BUY_DIALOG_TAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;


# instance fields
.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 104
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    const/4 v1, 0x0

    const-string v2, "ENTER_DETAIL"

    const-string v3, "enter_detail"

    invoke-direct {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->ENTER_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    .line 105
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    const/4 v2, 0x1

    const-string v3, "EXIT_DETAIL"

    const-string v4, "exit_detail"

    invoke-direct {v0, v3, v2, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->EXIT_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    .line 106
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    const/4 v3, 0x2

    const-string v4, "POPUP_BUY_DIALOG_PAUSE"

    const-string v5, "popup_buy_dialog_pause"

    invoke-direct {v0, v4, v3, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->POPUP_BUY_DIALOG_PAUSE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    const/4 v4, 0x3

    const-string v5, "POPUP_BUY_DIALOG_TAIL"

    const-string v6, "popup_buy_dialog_tail"

    invoke-direct {v0, v5, v4, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->POPUP_BUY_DIALOG_TAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    sget-object v5, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->ENTER_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->EXIT_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->POPUP_BUY_DIALOG_PAUSE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->POPUP_BUY_DIALOG_TAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

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

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;
    .locals 1

    .line 103
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    return-object p0
.end method

.method public static valueOfSceneType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;
    .locals 2

    .line 116
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->ENTER_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "enter_detail"

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->ENTER_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    goto :goto_0

    :cond_1
    const-string v1, "exit_detail"

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->EXIT_DETAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    goto :goto_0

    :cond_2
    const-string v1, "popup_buy_dialog_pause"

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->POPUP_BUY_DIALOG_PAUSE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    goto :goto_0

    :cond_3
    const-string v1, "popup_buy_dialog_tail"

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 127
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->POPUP_BUY_DIALOG_TAIL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;
    .locals 1

    .line 103
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SceneType;

    return-object v0
.end method
