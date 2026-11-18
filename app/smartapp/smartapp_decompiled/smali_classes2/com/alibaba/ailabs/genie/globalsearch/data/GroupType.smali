.class public final enum Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;
.super Ljava/lang/Enum;
.source "GroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum app:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum audioAlbum:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum audioContent:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum cloudClass:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum longVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum musicAlbum:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum musicContent:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum relatedSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum searchHistory:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum shortVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum topApp:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum topMusic:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum topSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

.field public static final enum topVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v1, 0x0

    const-string v2, "searchHistory"

    invoke-direct {v0, v2, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->searchHistory:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 5
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v2, 0x1

    const-string v3, "topMusic"

    invoke-direct {v0, v3, v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topMusic:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 6
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v3, 0x2

    const-string v4, "topVideo"

    invoke-direct {v0, v4, v3, v4}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 7
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v4, 0x3

    const-string v5, "topApp"

    invoke-direct {v0, v5, v4, v5}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topApp:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 8
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v5, 0x4

    const-string v6, "topSearch"

    invoke-direct {v0, v6, v5, v6}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 9
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v6, 0x5

    const-string v7, "longVideo"

    const-string v8, "show"

    invoke-direct {v0, v7, v6, v8}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->longVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 10
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v7, 0x6

    const-string v8, "shortVideo"

    const-string v9, "short_video"

    invoke-direct {v0, v8, v7, v9}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->shortVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/4 v8, 0x7

    const-string v9, "relatedSearch"

    invoke-direct {v0, v9, v8, v9}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->relatedSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 12
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "baike"

    const/16 v10, 0x8

    invoke-direct {v0, v9, v10, v9}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 13
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "audioContent"

    const/16 v10, 0x9

    const-string v11, "program_content"

    invoke-direct {v0, v9, v10, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->audioContent:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "audioAlbum"

    const/16 v10, 0xa

    const-string v11, "program_album"

    invoke-direct {v0, v9, v10, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->audioAlbum:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "musicContent"

    const/16 v10, 0xb

    const-string v11, "music_content"

    invoke-direct {v0, v9, v10, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->musicContent:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 16
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "musicAlbum"

    const/16 v10, 0xc

    const-string v11, "music_album"

    invoke-direct {v0, v9, v10, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->musicAlbum:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "app"

    const/16 v10, 0xd

    const-string v11, "application"

    invoke-direct {v0, v9, v10, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->app:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    .line 18
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const-string v9, "cloudClass"

    const/16 v10, 0xe

    const-string v11, "cloudClass"

    invoke-direct {v0, v9, v10, v11}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->cloudClass:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v0, 0xf

    .line 3
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    sget-object v9, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->searchHistory:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topMusic:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topApp:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->longVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->shortVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->relatedSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->audioContent:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->audioAlbum:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->musicContent:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->musicAlbum:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->app:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->cloudClass:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->$VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->name:Ljava/lang/String;

    return-void
.end method

.method public static nameOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;
    .locals 5

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->values()[Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;
    .locals 1

    .line 3
    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;
    .locals 1

    .line 3
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->$VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->name:Ljava/lang/String;

    return-object v0
.end method
