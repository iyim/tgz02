.class public Lcom/rich/czlylibary/bean/MusicFolder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4dbf2944337ef149L


# instance fields
.field private musicFolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMusicFolders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicFolder;->musicFolders:Ljava/util/Map;

    return-object v0
.end method

.method public setMusicFolders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicFolder;->musicFolders:Ljava/util/Map;

    return-void
.end method
