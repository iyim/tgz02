.class public Landroid/taobao/windvane/service/WVEventService;
.super Ljava/lang/Object;
.source "WVEventService.java"


# static fields
.field private static volatile EventManager:Landroid/taobao/windvane/service/WVEventService; = null

.field public static WV_BACKWARD_EVENT:I = -0x1

.field public static WV_EVENT:I = 0x0

.field public static WV_FORWARD_EVENT:I = 0x1


# instance fields
.field private mBackwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/service/WVEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/service/WVEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/service/WVEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/service/WVEventService;
    .locals 2

    .line 41
    sget-object v0, Landroid/taobao/windvane/service/WVEventService;->EventManager:Landroid/taobao/windvane/service/WVEventService;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Landroid/taobao/windvane/service/WVEventService;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/service/WVEventService;->EventManager:Landroid/taobao/windvane/service/WVEventService;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/taobao/windvane/service/WVEventService;

    invoke-direct {v1}, Landroid/taobao/windvane/service/WVEventService;-><init>()V

    sput-object v1, Landroid/taobao/windvane/service/WVEventService;->EventManager:Landroid/taobao/windvane/service/WVEventService;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/service/WVEventService;->EventManager:Landroid/taobao/windvane/service/WVEventService;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addEventListener(Landroid/taobao/windvane/service/WVEventListener;)V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    sget v0, Landroid/taobao/windvane/service/WVEventService;->WV_EVENT:I

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 59
    :try_start_0
    sget v0, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    if-ne p2, v0, :cond_0

    .line 60
    iget-object p2, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    sget v0, Landroid/taobao/windvane/service/WVEventService;->WV_EVENT:I

    if-ne p2, v0, :cond_1

    .line 62
    iget-object p2, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    sget v0, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    if-ne p2, v0, :cond_2

    .line 64
    iget-object p2, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 67
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public onEvent(I)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2

    const/4 v0, 0x0

    .line 175
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs declared-synchronized onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 3

    monitor-enter p0

    .line 146
    :try_start_0
    new-instance v0, Landroid/taobao/windvane/service/WVEventContext;

    invoke-direct {v0, p2, p3}, Landroid/taobao/windvane/service/WVEventContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 147
    :goto_0
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 148
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/service/WVEventListener;

    invoke-interface {v1, p1, v0, p4}, Landroid/taobao/windvane/service/WVEventListener;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-boolean v2, v1, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 151
    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 155
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 156
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/service/WVEventListener;

    invoke-interface {v1, p1, v0, p4}, Landroid/taobao/windvane/service/WVEventListener;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    iget-boolean v2, v1, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 159
    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 163
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 164
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/service/WVEventListener;

    invoke-interface {v1, p1, v0, p4}, Landroid/taobao/windvane/service/WVEventListener;->onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 166
    iget-boolean v2, v1, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 167
    monitor-exit p0

    return-object v1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 171
    :cond_5
    :try_start_3
    new-instance p1, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {p1, p2}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public varargs onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs onInstantEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 3

    .line 182
    new-instance v0, Landroid/taobao/windvane/service/WVEventContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/taobao/windvane/service/WVEventContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Landroid/taobao/windvane/service/WVEventService;->mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v2, p1, v0, p2}, Landroid/taobao/windvane/service/WVInstantEventListener;->onInstantEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public declared-synchronized removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 123
    iget-object v2, p0, Landroid/taobao/windvane/service/WVEventService;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 128
    iget-object v2, p0, Landroid/taobao/windvane/service/WVEventService;->mForwardList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 132
    iget-object v2, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq v1, p1, :cond_2

    .line 133
    iget-object p1, p0, Landroid/taobao/windvane/service/WVEventService;->mBackwardList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 136
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeInstantEvent(Landroid/taobao/windvane/service/WVInstantEventListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "WVEventService"

    const-string v0, "event can not be null"

    .line 100
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;

    if-nez v0, :cond_1

    const-string p1, "WVEventService"

    const-string v0, "event already be null"

    .line 104
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;

    if-eq v0, p1, :cond_2

    const-string p1, "WVEventService"

    const-string/jumbo v0, "remove failed"

    .line 108
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 111
    :try_start_3
    iput-object p1, p0, Landroid/taobao/windvane/service/WVEventService;->mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInstantEvent(Landroid/taobao/windvane/service/WVInstantEventListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "WVEventService"

    const-string v0, "event can not be null"

    .line 84
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/taobao/windvane/service/WVEventService;->mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;

    if-eqz v0, :cond_1

    const-string p1, "WVEventService"

    const-string v0, "an instance has already been set, please wait it end"

    .line 88
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_2
    iput-object p1, p0, Landroid/taobao/windvane/service/WVEventService;->mInstantEvent:Landroid/taobao/windvane/service/WVInstantEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
