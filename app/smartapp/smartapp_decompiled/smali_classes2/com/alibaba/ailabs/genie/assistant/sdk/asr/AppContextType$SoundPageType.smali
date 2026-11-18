.class public final enum Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;
.super Ljava/lang/Enum;
.source "AppContextType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundPageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_NOLY_TITLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_NONE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_COMMAND:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_DEFINITION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_FAVOR:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_FILM_NEWS:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_HISTORY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_MEMO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_RATIO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_SELECTION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_TAKEOUT_DISH:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_TAKEOUT_ORDER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY_RESULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_WEATHER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

.field public static final enum SOUND_PAGE_TYPE_RESULT_YINGSHI:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;


# instance fields
.field soundPageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 135
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v1, 0x0

    const-string v2, "SOUND_PAGE_TYPE_NONE"

    const-string v3, "0"

    invoke-direct {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NONE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v2, 0x1

    const-string v3, "SOUND_PAGE_TYPE_NOLY_TITLE"

    const-string v4, "1"

    invoke-direct {v0, v3, v2, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NOLY_TITLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 137
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v3, 0x2

    const-string v4, "SOUND_PAGE_TYPE_RESULT_COMMAND"

    const-string v5, "2"

    invoke-direct {v0, v4, v3, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_COMMAND:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v4, 0x3

    const-string v5, "SOUND_PAGE_TYPE_RESULT_YINGSHI"

    const-string v6, "3"

    invoke-direct {v0, v5, v4, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_YINGSHI:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 139
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v5, 0x4

    const-string v6, "SOUND_PAGE_TYPE_RESULT_HISTORY"

    const-string v7, "4"

    invoke-direct {v0, v6, v5, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_HISTORY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 140
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v6, 0x5

    const-string v7, "SOUND_PAGE_TYPE_RESULT_FAVOR"

    const-string v8, "5"

    invoke-direct {v0, v7, v6, v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_FAVOR:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 141
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v7, 0x6

    const-string v8, "SOUND_PAGE_TYPE_RESULT_SELECTION"

    const-string v9, "6"

    invoke-direct {v0, v8, v7, v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_SELECTION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 142
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/4 v8, 0x7

    const-string v9, "SOUND_PAGE_TYPE_RESULT_DEFINITION"

    const-string v10, "7"

    invoke-direct {v0, v9, v8, v10}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_DEFINITION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 143
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v9, 0x8

    const-string v10, "SOUND_PAGE_TYPE_RESULT_RATIO"

    const-string v11, "8"

    invoke-direct {v0, v10, v9, v11}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_RATIO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v10, 0x9

    const-string v11, "SOUND_PAGE_TYPE_RESULT_WEATHER"

    const-string v12, "9"

    invoke-direct {v0, v11, v10, v12}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_WEATHER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 145
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v11, 0xa

    const-string v12, "SOUND_PAGE_TYPE_RESULT_FILM_NEWS"

    const-string v13, "10"

    invoke-direct {v0, v12, v11, v13}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_FILM_NEWS:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 146
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v12, 0xb

    const-string v13, "SOUND_PAGE_TYPE_RESULT_MEMO"

    const-string v14, "11"

    invoke-direct {v0, v13, v12, v14}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_MEMO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 147
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v13, 0xc

    const-string v14, "SOUND_PAGE_TYPE_RESULT_TAKEOUT_DISH"

    const-string v15, "12"

    invoke-direct {v0, v14, v13, v15}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_DISH:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 148
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v14, 0xd

    const-string v15, "SOUND_PAGE_TYPE_RESULT_TAKEOUT_ORDER"

    const-string v13, "13"

    invoke-direct {v0, v15, v14, v13}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_ORDER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 149
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v13, 0xe

    const-string v15, "SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY"

    const-string v14, "14"

    invoke-direct {v0, v15, v13, v14}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 150
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const-string v14, "SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY_RESULT"

    const/16 v15, 0xf

    const-string v13, "15"

    invoke-direct {v0, v14, v15, v13}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY_RESULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v0, 0x10

    .line 134
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    sget-object v13, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NONE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NOLY_TITLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_COMMAND:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_YINGSHI:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_HISTORY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_FAVOR:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_SELECTION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_DEFINITION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_RATIO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_WEATHER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_FILM_NEWS:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_MEMO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_DISH:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_ORDER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY_RESULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

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

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->soundPageType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;
    .locals 1

    .line 134
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    return-object p0
.end method

.method public static valueOfPageType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;
    .locals 2

    .line 159
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NONE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "0"

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NONE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto/16 :goto_0

    :cond_1
    const-string v1, "1"

    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_NOLY_TITLE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto/16 :goto_0

    :cond_2
    const-string v1, "2"

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_COMMAND:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto/16 :goto_0

    :cond_3
    const-string v1, "3"

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_YINGSHI:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto/16 :goto_0

    :cond_4
    const-string v1, "4"

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_HISTORY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto/16 :goto_0

    :cond_5
    const-string v1, "5"

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_FAVOR:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto/16 :goto_0

    :cond_6
    const-string v1, "6"

    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 176
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_SELECTION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_7
    const-string v1, "7"

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 178
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_DEFINITION:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_8
    const-string v1, "8"

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 180
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_RATIO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_9
    const-string v1, "9"

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_WEATHER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_a
    const-string v1, "10"

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 184
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_FILM_NEWS:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_b
    const-string v1, "11"

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 186
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_MEMO:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_c
    const-string v1, "12"

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 188
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_DISH:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_d
    const-string v1, "13"

    .line 189
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 190
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_ORDER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_e
    const-string v1, "14"

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 192
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    goto :goto_0

    :cond_f
    const-string v1, "15"

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 194
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->SOUND_PAGE_TYPE_RESULT_TAKEOUT_PAY_RESULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    :cond_10
    :goto_0
    return-object v0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;
    .locals 1

    .line 134
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$SoundPageType;

    return-object v0
.end method
