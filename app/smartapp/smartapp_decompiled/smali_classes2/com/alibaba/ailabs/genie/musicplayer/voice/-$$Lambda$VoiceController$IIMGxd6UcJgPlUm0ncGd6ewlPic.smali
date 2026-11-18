.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/voice/-$$Lambda$VoiceController$IIMGxd6UcJgPlUm0ncGd6ewlPic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/-$$Lambda$VoiceController$IIMGxd6UcJgPlUm0ncGd6ewlPic;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/-$$Lambda$VoiceController$IIMGxd6UcJgPlUm0ncGd6ewlPic;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->lambda$onNLUResult$72(Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;)V

    return-void
.end method
