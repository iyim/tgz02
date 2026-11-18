.class public Landroid/taobao/windvane/webview/ParamsParcelable;
.super Ljava/lang/Object;
.source "ParamsParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/taobao/windvane/webview/ParamsParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jsbridgeEnabled:Z

.field private navBarEnabled:Z

.field private showLoading:Z

.field private supportPullRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/taobao/windvane/webview/ParamsParcelable$1;

    invoke-direct {v0}, Landroid/taobao/windvane/webview/ParamsParcelable$1;-><init>()V

    sput-object v0, Landroid/taobao/windvane/webview/ParamsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 28
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 31
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 28
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 31
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isJsbridgeEnabled()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return v0
.end method

.method public isNavBarEnabled()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    return v0
.end method

.method public isShowLoading()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    return v0
.end method

.method public isSupportPullRefresh()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    return v0
.end method

.method public setJsbridgeEnabled(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return-void
.end method

.method public setNavBarEnabled(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    return-void
.end method

.method public setSupportPullRefresh(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean p2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
