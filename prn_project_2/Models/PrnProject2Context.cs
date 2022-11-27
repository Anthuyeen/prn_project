using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using prn_project_2.Models;

namespace prn_project_2.Models;

public partial class PrnProject1Context : DbContext
{
    public PrnProject1Context()
    {
    }

    public PrnProject1Context(DbContextOptions<PrnProject1Context> options)
        : base(options)
    {
    }

    public virtual DbSet<ActivityDetail> ActivityDetails { get; set; }

    public virtual DbSet<Student> Students { get; set; }

    public virtual DbSet<Subject> Subjects { get; set; }

    public virtual DbSet<Teacher> Teachers { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
    => optionsBuilder.UseSqlServer("server=NANTHUYEEN\\SQLEXPRESS;database=prn_project_2;user=sa;password=Anthuyen281211;TrustServerCertificate=Yes;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

        modelBuilder.Entity<ActivityDetail>(entity =>
        {
            entity.HasKey(e => e.ActivityId).HasName("PK__Activity__45F4A7910AD2A005");

            entity.ToTable("ActivityDetail");

            entity.Property(e => e.Booker).HasMaxLength(40);
            entity.Property(e => e.Campus).HasMaxLength(40);
            entity.Property(e => e.Classroom).HasMaxLength(40);
            entity.Property(e => e.StudentGroup).HasMaxLength(40);
            entity.Property(e => e.StudentId).HasMaxLength(40);
            entity.Property(e => e.SubjectId).HasMaxLength(40);
            entity.Property(e => e.TeacherId).HasMaxLength(40);
            entity.Property(e => e.Time).HasColumnType("datetime");

            entity.HasOne(d => d.Student).WithMany(p => p.ActivityDetails)
                .HasForeignKey(d => d.StudentId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ActivityD__Stude__0CBAE877");

            entity.HasOne(d => d.Subject).WithMany(p => p.ActivityDetails)
                .HasForeignKey(d => d.SubjectId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ActivityD__Subje__0DAF0CB0");

            entity.HasOne(d => d.Teacher).WithMany(p => p.ActivityDetails)
                .HasForeignKey(d => d.TeacherId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ActivityD__Teach__0EA330E9");
        });

        modelBuilder.Entity<Student>(entity =>
        {
            entity.HasKey(e => e.StudentId).HasName("PK__Students__32C52B9907020F21");

            entity.Property(e => e.StudentId).HasMaxLength(40);
            entity.Property(e => e.Dob)
                .HasColumnType("datetime")
                .HasColumnName("DOB");
            entity.Property(e => e.Email).HasMaxLength(40);
            entity.Property(e => e.StudentName).HasMaxLength(40);
        });

        modelBuilder.Entity<Subject>(entity =>
        {
            entity.HasKey(e => e.SubjectId).HasName("PK__Subjects__AC1BA3A803317E3D");

            entity.Property(e => e.SubjectId).HasMaxLength(40);
            entity.Property(e => e.SubjectName).HasMaxLength(200);
        });

        modelBuilder.Entity<Teacher>(entity =>
        {
            entity.HasKey(e => e.TeacherId).HasName("PK__Teachers__EDF259647F60ED59");

            entity.Property(e => e.TeacherId).HasMaxLength(40);
            entity.Property(e => e.Email).HasMaxLength(40);
            entity.Property(e => e.TeacherName).HasMaxLength(40);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}