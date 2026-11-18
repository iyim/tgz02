.class public Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;
.super Ljava/lang/Object;
.source "AgmcMedia.java"


# instance fields
.field public audioUrl:Ljava/lang/String;

.field public exclusive:Z

.field public extraData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;->exclusive:Z

    return-void
.end method
