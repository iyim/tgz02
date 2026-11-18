.class public final enum Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;
.super Ljava/lang/Enum;
.source "MusicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

.field public static final enum LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

.field public static final enum LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

.field public static final enum LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const/4 v1, 0x0

    const-string v2, "LIST_TYPE_HISTORY"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const/4 v2, 0x1

    const-string v3, "LIST_TYPE_CURRENT"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const/4 v3, 0x2

    const-string v4, "LIST_TYPE_COLLECT"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;
    .locals 1

    .line 34
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    return-object v0
.end method
