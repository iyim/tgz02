.class public Lc/b/a/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/h/i$a;


# static fields
.field public static q:[I


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Landroid/os/Handler;

.field public c:I

.field public d:Z

.field public e:J

.field public f:Ljava/lang/Thread;

.field public g:Lc/b/a/b/h/l;

.field public h:Lcom/aligenie/ags/analytics/collector/TemperatureCollector;

.field public i:Lc/b/a/b/h/f;

.field public j:Lc/b/a/b/h/m;

.field public k:Lc/b/a/b/h/a;

.field public l:Lc/b/a/b/h/p;

.field public m:Lc/b/a/b/h/e;

.field public n:Lc/b/a/b/e;

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/b/a/b/h/j;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lc/b/a/b/n/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [I

    const-string v1, "am_crash"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "am_meminfo"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "am_create_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "am_on_paused_called"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "am_proc_start"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const-string v1, "am_restart_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const-string v1, "am_on_resume_called"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-string v1, "am_activity_launch_time"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "am_on_stop_called"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "am_destroy_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "am_finish_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "am_new_intent"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "am_proc_died"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "am_failed_to_pause"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "am_relaunch_resume_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    const-string v1, "am_relaunch_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    const-string v1, "am_process_crashed_too_much"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    const-string v1, "am_service_crashed_too_much"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    const-string v1, "am_process_start_timeout"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    const-string v1, "am_anr"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput v1, v0, v2

    const-string v1, "am_kill"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v0, v2

    const-string v1, "boot_progress_start"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    aput v1, v0, v2

    const-string v1, "boot_progress_preload_start"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    const-string v1, "boot_progress_preload_end"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    const-string v1, "boot_progress_system_run"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    aput v1, v0, v2

    const-string v1, "boot_progress_pms_start"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    aput v1, v0, v2

    const-string v1, "boot_progress_pms_system_scan_start"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1a

    aput v1, v0, v2

    const-string v1, "boot_progress_pms_data_scan_start"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1b

    aput v1, v0, v2

    const-string v1, "boot_progress_pms_scan_end"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1c

    aput v1, v0, v2

    const-string v1, "boot_progress_pms_ready"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1d

    aput v1, v0, v2

    const-string v1, "boot_progress_ams_ready"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    aput v1, v0, v2

    const-string v1, "boot_progress_enable_screen"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1f

    aput v1, v0, v2

    const-string v1, "storage_state"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    aput v1, v0, v2

    const-string v1, "volume_changed"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x21

    aput v1, v0, v2

    const-string v1, "frame_drop_cause"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x22

    aput v1, v0, v2

    const-string v1, "frame_rate"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x23

    aput v1, v0, v2

    const-string v1, "tickle"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x24

    aput v1, v0, v2

    sput-object v0, Lc/b/a/b/d;->q:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v0, Lc/b/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/b/a/b/d;->d:Z

    const/4 v1, 0x1

    .line 1
    iput v1, p0, Lc/b/a/b/d;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lc/b/a/b/d;->e:J

    .line 2
    new-instance v3, Lc/b/a/b/e;

    invoke-direct {v3}, Lc/b/a/b/e;-><init>()V

    iput-object v3, p0, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    new-instance v3, Lc/b/a/b/h/s;

    invoke-direct {v3, p0}, Lc/b/a/b/h/s;-><init>(Lc/b/a/b/h/i$a;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_meminfo"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_crash"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_create_activity"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_pause_activity"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_on_paused_called"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_proc_start"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_on_resume_called"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_activity_launch_time"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_destroy_activity"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_finish_activity"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_new_intent"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_proc_died"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_anr"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_kill"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_process_crashed_too_much"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_service_crashed_too_much"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "am_process_start_timeout"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "boot_progress_start"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "boot_progress_system_run"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "boot_progress_pms_ready"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "boot_progress_ams_ready"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "boot_progress_enable_screen"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "storage_state"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "volume_changed"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "frame_drop_cause"

    invoke-static {v5, v4, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lc/b/a/b/h/s;)V

    iget-object v4, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    const-string v5, "frame_rate"

    invoke-static {v5}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lc/b/a/b/h/l;

    invoke-direct {v3, p0}, Lc/b/a/b/h/l;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->g:Lc/b/a/b/h/l;

    new-instance v3, Lcom/aligenie/ags/analytics/collector/TemperatureCollector;

    invoke-direct {v3, p0}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->h:Lcom/aligenie/ags/analytics/collector/TemperatureCollector;

    new-instance v3, Lc/b/a/b/h/c;

    invoke-direct {v3, p0}, Lc/b/a/b/h/c;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/h/f;

    invoke-direct {v3, p0}, Lc/b/a/b/h/f;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->i:Lc/b/a/b/h/f;

    new-instance v3, Lc/b/a/b/h/m;

    invoke-direct {v3, p0}, Lc/b/a/b/h/m;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->j:Lc/b/a/b/h/m;

    new-instance v3, Lc/b/a/b/h/p;

    invoke-direct {v3, p0}, Lc/b/a/b/h/p;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->l:Lc/b/a/b/h/p;

    new-instance v3, Lc/b/a/b/h/r;

    invoke-direct {v3, p0}, Lc/b/a/b/h/r;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/h/a;

    invoke-direct {v3, p0}, Lc/b/a/b/h/a;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->k:Lc/b/a/b/h/a;

    new-instance v3, Lc/b/a/b/h/e;

    invoke-direct {v3, p0}, Lc/b/a/b/h/e;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->m:Lc/b/a/b/h/e;

    new-instance v3, Lc/b/a/b/h/q;

    invoke-direct {v3, p0}, Lc/b/a/b/h/q;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/n/f;

    invoke-direct {v3, p0}, Lc/b/a/b/n/f;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/n/a;

    invoke-direct {v3, p0}, Lc/b/a/b/n/a;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/n/c;

    invoke-direct {v3, p0}, Lc/b/a/b/n/c;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/n/b;

    invoke-direct {v3, p0}, Lc/b/a/b/n/b;-><init>(Lc/b/a/b/h/i$a;)V

    iput-object v3, p0, Lc/b/a/b/d;->p:Lc/b/a/b/n/b;

    new-instance v3, Lc/b/a/b/n/e;

    invoke-direct {v3, p0}, Lc/b/a/b/n/e;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Lc/b/a/b/h/n;

    invoke-direct {v3, p0}, Lc/b/a/b/h/n;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lc/b/a/b/b;

    invoke-direct {v4, p0}, Lc/b/a/b/b;-><init>(Lc/b/a/b/d;)V

    const-string v5, "CollectWorkerThread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lc/b/a/b/d;->a:Ljava/lang/Thread;

    iget-object v3, p0, Lc/b/a/b/d;->a:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3
    sget-object v3, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 4
    invoke-virtual {v3}, Lc/b/a/b/o/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lc/b/a/b/d;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-wide v1, p0, Lc/b/a/b/d;->e:J

    :cond_0
    :goto_0
    const-string v1, "mCurrentReadEventLog = "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc/b/a/b/d;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc/b/a/b/c;

    invoke-direct {v2, p0}, Lc/b/a/b/c;-><init>(Lc/b/a/b/d;)V

    const-string v3, "EventLogReaderThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lc/b/a/b/d;->f:Ljava/lang/Thread;

    :goto_1
    iget-object v1, p0, Lc/b/a/b/d;->b:Landroid/os/Handler;

    if-nez v1, :cond_1

    const-string v1, "wait CollectWorkerThread to run"

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/b/a/b/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/util/EventLog$Event;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lc/b/a/b/d;->q:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTag()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTag()I

    iget-object v0, p0, Lc/b/a/b/d;->o:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/h/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lc/b/a/b/h/j;->a(Landroid/util/EventLog$Event;)Z

    :cond_3
    return-void
.end method
