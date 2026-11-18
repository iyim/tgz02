.class public Lcom/alibaba/ailabs/avesdk/DispatcherCursor;
.super Landroid/database/MatrixCursor;
.source "DispatcherCursor.java"


# static fields
.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final KEY_BINDER_WRAPPER:Ljava/lang/String; = "KeyBinderWrapper"

.field private static cursorCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/avesdk/DispatcherCursor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private binderExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->cursorCache:Ljava/util/Map;

    const-string v0, "col"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 50
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->binderExtras:Landroid/os/Bundle;

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->binderExtras:Landroid/os/Bundle;

    new-instance v0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string p2, "KeyBinderWrapper"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static generateCursor(Landroid/os/IBinder;)Lcom/alibaba/ailabs/avesdk/DispatcherCursor;
    .locals 2

    .line 65
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->cursorCache:Ljava/util/Map;

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;

    if-eqz v0, :cond_0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;

    sget-object v1, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    sget-object v1, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->cursorCache:Ljava/util/Map;

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stripBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 82
    const-class v1, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "KeyBinderWrapper"

    .line 83
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;

    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ar/monitor/BinderWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/DispatcherCursor;->binderExtras:Landroid/os/Bundle;

    return-object v0
.end method
