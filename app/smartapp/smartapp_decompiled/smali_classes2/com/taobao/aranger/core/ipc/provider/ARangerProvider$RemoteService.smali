.class Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;
.super Landroid/os/Binder;
.source "ARangerProvider.java"

# interfaces
.implements Landroid/content/IContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;


# direct methods
.method constructor <init>(Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;->this$0:Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "android.content.IContentProvider"

    .line 197
    invoke-virtual {p0, p0, p1}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/16 p4, 0x15

    if-eq p1, p4, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string p1, "android.content.IContentProvider"

    .line 260
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x11

    if-le p1, p4, :cond_1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 264
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-lt p1, p4, :cond_2

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 267
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p2

    .line 271
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;->this$0:Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;

    invoke-virtual {v0, p1, p4, p2}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-static {p3, p1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    :goto_0
    return v1

    .line 243
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 244
    new-instance p2, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService$2;

    invoke-direct {p2, p0, p1}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService$2;-><init>(Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;Ljava/util/List;)V

    invoke-static {p2}, Lcom/taobao/aranger/utils/IPCThreadCaller;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 255
    invoke-static {}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;->access$000()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    const-string p4, "[onTransact][create string array list error]"

    invoke-static {p2, p4, p1, p3}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return v1

    :cond_4
    if-ne p4, v1, :cond_5

    .line 211
    :try_start_2
    sget-object p1, Lcom/taobao/aranger/core/entity/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/aranger/core/entity/Call;

    .line 212
    new-instance p2, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService$1;

    invoke-direct {p2, p0, p1}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService$1;-><init>(Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;Lcom/taobao/aranger/core/entity/Call;)V

    invoke-static {p2}, Lcom/taobao/aranger/utils/IPCThreadCaller;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    return v1

    .line 227
    :cond_5
    :try_start_3
    sget-object p1, Lcom/taobao/aranger/core/entity/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/aranger/core/entity/Call;

    .line 228
    iget-object p2, p0, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$RemoteService;->this$0:Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;

    invoke-virtual {p2, p1}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;->sendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p2

    .line 229
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getReturnType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 230
    invoke-virtual {p2}, Lcom/taobao/aranger/core/entity/Reply;->isError()Z

    move-result p1

    if-nez p1, :cond_6

    .line 231
    invoke-virtual {p2}, Lcom/taobao/aranger/core/entity/Reply;->getFlowParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 232
    :cond_6
    invoke-virtual {p2, p3, v0}, Lcom/taobao/aranger/core/entity/Reply;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 235
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p2

    const/16 v0, 0xa

    .line 236
    invoke-virtual {p2, v0}, Lcom/taobao/aranger/core/entity/Reply;->setErrorCode(I)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p2

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/aranger/core/entity/Reply;->setErrorMessage(Ljava/lang/String;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/taobao/aranger/core/entity/Reply;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_7
    :goto_2
    return v1
.end method
