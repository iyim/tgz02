.class public final enum Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;
.super Ljava/lang/Enum;
.source "AppContextType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_MOVIE_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_MOVIE_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_SERIES_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_SERIES_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_VERIETY_SHOW_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_VERIETY_SHOW_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

.field public static final enum PAGE_TYPE_YINGSHI_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;


# instance fields
.field pageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v1, 0x0

    const-string v2, "PAGE_TYPE_DEFAULT"

    const-string v3, "0"

    invoke-direct {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v2, 0x1

    const-string v3, "PAGE_TYPE_YINGSHI_DEFAULT"

    const-string v4, "1"

    invoke-direct {v0, v3, v2, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_YINGSHI_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 16
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v3, 0x2

    const-string v4, "PAGE_TYPE_MOVIE_DETAIL_PLAY"

    const-string v5, "2"

    invoke-direct {v0, v4, v3, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_MOVIE_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v4, 0x3

    const-string v5, "PAGE_TYPE_MOVIE_FULL_PLAY"

    const-string v6, "3"

    invoke-direct {v0, v5, v4, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_MOVIE_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 18
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v5, 0x4

    const-string v6, "PAGE_TYPE_SERIES_DETAIL_PLAY"

    const-string v7, "4"

    invoke-direct {v0, v6, v5, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_SERIES_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v6, 0x5

    const-string v7, "PAGE_TYPE_SERIES_FULL_PLAY"

    const-string v8, "5"

    invoke-direct {v0, v7, v6, v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_SERIES_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v7, 0x6

    const-string v8, "PAGE_TYPE_VERIETY_SHOW_DETAIL_PLAY"

    const-string v9, "6"

    invoke-direct {v0, v8, v7, v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_VERIETY_SHOW_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/4 v8, 0x7

    const-string v9, "PAGE_TYPE_VERIETY_SHOW_FULL_PLAY"

    const-string v10, "7"

    invoke-direct {v0, v9, v8, v10}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_VERIETY_SHOW_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    const/16 v0, 0x8

    .line 13
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    sget-object v9, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_YINGSHI_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_MOVIE_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_MOVIE_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_SERIES_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_SERIES_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_VERIETY_SHOW_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_VERIETY_SHOW_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->pageType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;
    .locals 1

    .line 13
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    return-object p0
.end method

.method public static valueOfPageType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "0"

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_YINGSHI_DEFAULT:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_2
    const-string v1, "2"

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_MOVIE_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_3
    const-string v1, "3"

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_MOVIE_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_4
    const-string v1, "4"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_SERIES_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_5
    const-string v1, "5"

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_SERIES_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_6
    const-string v1, "6"

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_VERIETY_SHOW_DETAIL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    goto :goto_0

    :cond_7
    const-string v1, "7"

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->PAGE_TYPE_VERIETY_SHOW_FULL_PLAY:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    :cond_8
    :goto_0
    return-object v0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextType$PageType;

    return-object v0
.end method
