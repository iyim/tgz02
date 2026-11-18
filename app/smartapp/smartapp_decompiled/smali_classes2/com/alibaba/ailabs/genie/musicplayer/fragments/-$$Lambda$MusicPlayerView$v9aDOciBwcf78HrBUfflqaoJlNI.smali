.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$v9aDOciBwcf78HrBUfflqaoJlNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/ui/SoundQualityPopup$QualitySelect;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$v9aDOciBwcf78HrBUfflqaoJlNI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    return-void
.end method


# virtual methods
.method public final select(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$v9aDOciBwcf78HrBUfflqaoJlNI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->lambda$showSoundQualityList$167$MusicPlayerView(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;)V

    return-void
.end method
