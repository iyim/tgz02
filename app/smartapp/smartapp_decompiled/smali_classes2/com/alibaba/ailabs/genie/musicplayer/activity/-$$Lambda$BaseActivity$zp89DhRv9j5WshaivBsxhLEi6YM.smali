.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$zp89DhRv9j5WshaivBsxhLEi6YM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$zp89DhRv9j5WshaivBsxhLEi6YM;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$zp89DhRv9j5WshaivBsxhLEi6YM;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->lambda$initObserver$28$BaseActivity(Ljava/util/Map;)V

    return-void
.end method
