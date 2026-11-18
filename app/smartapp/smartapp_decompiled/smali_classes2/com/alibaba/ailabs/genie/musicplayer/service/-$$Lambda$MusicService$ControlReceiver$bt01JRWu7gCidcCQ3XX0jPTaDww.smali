.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;IZZLandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$1:I

    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$2:Z

    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$3:Z

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$4:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$1:I

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$2:Z

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$3:Z

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$ControlReceiver$bt01JRWu7gCidcCQ3XX0jPTaDww;->f$4:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;->lambda$onReceive$12$MusicService$ControlReceiver(IZZLandroid/content/Intent;)V

    return-void
.end method
